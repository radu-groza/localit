<?php

class BaseController extends Controller {

    protected $title = "LOCALit";
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
