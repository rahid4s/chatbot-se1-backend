<?php

namespace App\Classes;

// DummyLLM2Adapter implements the LanguageModel interface
class DummyLLM2Adapter implements LanguageModel {

    private DummyLLM2 $dummyLLM;

    public function __construct(DummyLLM2 $dummyLLM) {
        $this->dummyLLM = $dummyLLM;
    }

    public function getResponse($query) {
        // Call the original DummyLLM method
        return $this->dummyLLM->getResponse($query);
    }
}
