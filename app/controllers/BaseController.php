<?php

class BaseController extends Controller {

    protected $title = "LOCALit";

    protected $layout = 'layouts.master';

    protected $useLayout = true;

    public function __construct()
    {
        $this->beforeFilter('csrf', array('on' => 'post'));

        $this->afterFilter('@renderLayout');
    }

    /**
     * automatically render the layout
     *
     * if you do not want to use the layout for a controller action, set $this->useLayout to false
     *
     * @param $route
     * @param $request
     * @param \Illuminate\Http\Response $response
     */
    public function renderLayout($route, $request, $response)
    {
        if (!$this->useLayout || !$response instanceof Illuminate\Http\Response) {
            return;
        }
        $this->layout->content = $response->getContent();
        $response->setContent($this->layout);
    }

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}

    /**
     * return the BASE META TITLE
     *
     * @return string
     */
    protected function getTitle()
    {
        return $this->title;
    }
}
