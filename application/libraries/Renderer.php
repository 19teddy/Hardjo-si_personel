<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Renderer {

	private $CI;

	public $auto_clear = TRUE;

	private $_data = [];
	private $_css = [];
	private $_js = [];
	private $_json_list = [];

	private $_alerts = [];

	private $_properties = [
		'template' => 'template',
		'content_root' => 'contents/',
		'content_css_root' => 'assets/css/pages/',
		'content_js_root' => 'assets/js/pages/',
		'content' => '',
		'app_name' => NULL,
		'nav_index' => NULL,
		'title' => NULL,
	];

	function __construct() {
		$this->CI = &get_instance();
		$this->CI->load->helper('url');
		$this->CI->load->library('session');
	}

	public function __call($name, $args) {

		if(array_key_exists($name, $this->_properties)) {

			if(empty($args)) {
				return $this->_properties[$name];
			}

			$this->_properties[$name] = $args[0];
			return $this;			
		}

		else throw new Exception('Property "'.$name.'" doesn\'t exist');
	}

	public function render($return = FALSE) {

		$result = $this->CI->load->view($this->_properties['template'], $this->_data, $return);

		if($this->auto_clear === TRUE) {
			$this->_properties['title'] = '';
			$this->_data = [];
			$this->_css = [];
			$this->_js = [];
		}

		return $result;
	}

	public function render_navigation($navigations, $role, $is_root = TRUE) {

		$selected_nav = $this->_properties['nav_index'];

		$result = '';
		$root_open = FALSE;
		$nav_index = is_array($selected_nav) && !empty($selected_nav) ? $selected_nav[0] : $selected_nav;
		if(is_array($selected_nav)) $selected_nav = array_splice($selected_nav, 1);
		$i = 0;
		foreach ($navigations as $nav) {

			$has_child = isset($nav['value']) && is_array($nav['value']);

			if(isset($nav['grants']) && (
					(is_array($nav['grants']) && !in_array($role, $nav['grants'])) ||
					(!is_array($nav['grants']) && $nav['grants'] != $role)
				)) { continue; }

			if(!isset($nav['value']) || $nav['value'] === NULL) {
				$text = isset($nav['text']) && !is_array($nav['text']) ? $nav['text'] : '';
				$result .= '<li class="header">'.$text.'</li>';
				continue;
			}

			$li_treeview = $has_child ? 'treeview' : NULL;
			$li_active = $i === $nav_index || (isset($nav['id']) && $nav['id'] === $nav_index) ? 'active' : NULL;
			$li_class = $li_treeview !== NULL || $li_active !== NULL ? (' class="'.join(' ', [$li_treeview, $li_active])).'"' : '';
			$li = '<li'.$li_class.'>';

			// create anchor href attribute
			$href = 'javascript:;';
			if(isset($nav['value']) && !is_array($nav['value'])) {
				$relative = isset($nav['relative']) ? $nav['relative'] : 'base';
				if($relative == 'site') {
					$href = site_url($nav['value']);
				}
				elseif($relative == 'base') {
					$href = base_url($nav['value']);
				}
				else {
					$href = $nav['value'];
				}
			}

			// create anchor title attribute
			$title = isset($nav['text']) ? $nav['text'] : '';
			if(isset($nav['title']) && is_string($nav['title'])) {
				$title = $nav['title'];
			}

			$a = '<a href="'.$href.'"';
			if(!empty($title)) {
				$a .= ' title="'.$title.'"';
			}
			$a .= '>';

			if(isset($nav['icon'])) {
				$a .= '<i class="'.$nav['icon'].'"></i> ';
			}

			$text = isset($nav['text']) ? $nav['text'] : '';
			$a .= '<span>'.$text.'</span>';
			$a .= '<span class="pull-right-container">';

			if(isset($nav['badge']) && is_array($nav['badge'])) {

				$nav['badges'] = [
					'color' => isset($nav['badge']['color']) ? $nav['badge']['color'] : 'default',
					'text' => isset($nav['badge']['text']) ? $nav['badge']['text'] : '',
				];
			}

			if(isset($nav['badges']) && is_array($nav['badges'])) {

				foreach ($nav['badges'] as $badge) {
					$color = isset($badge['color']) ? $badge['color'] : 'default';
					$text = isset($badge['text']) ? $badge['text'] : '';
					$a .= '<span class="label bg-'.$color.' pull-right">'.$text.'</span>';
				}
			}
			elseif($has_child) {
				$a .= '<i class="fa fa-angle-left pull-right"></i>';
			}

			$a .= '</span>';

			$child = $a.'</a>';

			if($has_child) {
				$child .= $this->render_navigation($nav['value'], $role, is_array($selected_nav) ? $selected_nav : NULL, FALSE);
			}

			$li .= $child.'</li>';

			$result .= $li;
			$i++;
		}

		$ul = $is_root ? '<ul class="sidebar-menu" data-widget="tree">' : '<ul class="treeview-menu">';

		return $ul.$result.'</ul>';
	}

	public function render_title() {
		$title = $this->_properties['title'];
		$app_name = $this->_properties['app_name'];
		return empty($title) ? $app_name : (empty($app_name) ? $title : ($title . ' | ' . $app_name));
	}

	public function render_css() {
		return join("\n", $this->_css);
	}

	public function render_js() {
		return join("\n", $this->_js);
	}

	public function render_content() {
		if(file_exists(VIEWPATH.$this->_properties['content_root'].$this->_properties['content'].'.php')) {
			return
				$this->CI->load->view($this->_properties['content_root'].$this->_properties['content'], $this->_data, TRUE);
		}
	}

	public function render_content_css() {
		if(file_exists(FCPATH.$this->_properties['content_css_root'].$this->_properties['content'].'.css')) {
			return
				'<link href="'.base_url().$this->_properties['content_css_root'].$this->_properties['content'].'.css" rel="stylesheet">';
		}
	}

	public function render_content_js() {
		if(file_exists(FCPATH.$this->_properties['content_js_root'].$this->_properties['content'].'.js')) {
			return
				'<script type="text/javascript" src="'.base_url().$this->_properties['content_js_root'].$this->_properties['content'].'.js"></script>';
		}
	}

	public function xsrf_tag() {
		$name = $this->CI->security->get_csrf_token_name();
		$token = $this->CI->security->get_csrf_hash();
		return '<input type="hidden" name="'.$name.'" value="'.$token.'">';
	}

	public function data($key, $value = NULL) {

		if(is_array($key)) {
			$this->_data = array_merge($this->_data, $key);
		}
		else {
			$this->_data[$key] = $value;
		}

		return $this;
	}

	public function css($value, $relative = 'base') {

		if($value !== NULL) {

			if(!is_array($value)) {
				$value = [$value];
			}

			foreach ($value as $css_item) {

				switch ($relative) {
					case 'base':
						$this->_css[] = '<link href="'.base_url().$css_item.'" rel="stylesheet">';
						break;
					case 'site':
						$this->_css[] = '<link href="'.site_url().$css_item.'" rel="stylesheet">';
						break;
					case 'absolute':
						$this->_css[] = '<link href="'.$css_item.'" rel="stylesheet">';
						break;
					case 'script':
						$this->_css[] = '<style type="text/css">'.$css_item.'</style>';
						break;
					default:
						$this->_css[] = $css_item;
						break;
				}
			}
		}

		return $this;
	}

	public function js($value, $relative = 'base') {

		if($value !== NULL) {

			if(!is_array($value)) {
				$value = [$value];
			}

			foreach ($value as $js_item) {

				switch ($relative) {
					case 'base':
						$this->_js[] = '<script type="text/javascript" src="'.base_url().$js_item.'"></script>';
						break;
					case 'site':
						$this->_js[] = '<script type="text/javascript" src="'.site_url().$js_item.'"></script>';
						break;
					case 'absolute':
						$this->_js[] = '<script type="text/javascript" src="'.$js_item.'"></script>';
						break;
					case 'script':
						$this->_js[] = '<script type="text/javascript">'.$js_item.'</script>';
						break;
					default:
						$this->_js[] = $js_item;
						break;
				}
			}
		}

		return $this;
	}

	public function inject_json($var, $data) {

		$this->_json_list[$var] = $data;
		return $this;
	}

	public function render_json() {

		if(!empty($this->_json_list)) {
			echo "<script>window.jsonInject = ".json_encode($this->_json_list).';</script>';
		}
	}

	public function append_alert($type, $icon, $title, $message = NULL) {

		if(NULL === $message) {
			$message = $title;
			$title = ucfirst($type);
		}

		$this->_alerts[] = [
			'type' => $type,
			'icon' => $icon,
			'title' => $title,
			'message' => $message,
		];

		$this->CI->session->set_userdata('___alerts___', $this->_alerts);

		return $this;
	}

	public function append_warning($title, $message = NULL) {

		return $this->append_alert('warning', 'fa fa-exclamation-triangle', $title, $message);
	}

	public function append_danger($title, $message = NULL) {

		return $this->append_alert('danger', 'fa fa-ban', $title, $message);
	}

	public function append_info($title, $message = NULL) {

		return $this->append_alert('info', 'fa fa-info-circle', $title, $message);
	}

	public function append_success($title, $message = NULL) {

		return $this->append_alert('success', 'fa fa-check', $title, $message);
	}

	public function render_alert() {

		if(empty($this->_alerts)) {
			$this->_alerts = $this->CI->session->userdata('___alerts___') ?? [];
		}
		$this->CI->session->unset_userdata('___alerts___');

		return array_reduce($this->_alerts, function($acc, $item) {
			$header = empty($item['title']) ? '' : ('<i class="icon '.$item['icon'].'"></i> '.$item['title'].'</h4>');
			return $acc.
				'<div class="alert alert-'.$item['type'].' alert-dismissible">'.
					'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'.
					'<h4>'.$header.'</h4>'.$item['message'].
				'</div>'
				;
		}, '');
	}
}