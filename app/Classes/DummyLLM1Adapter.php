<?php

namespace App\Classes;

// DummyLLM2Adapter implements the LanguageModel interface
class DummyLLM1Adapter implements LanguageModel {

    private DummyLLM1 $dummyLLM;

    public function __construct(DummyLLM1 $dummyLLM) {
        $this->dummyLLM = $dummyLLM;
    }

    public function getResponse($query) {
        // Call the original DummyLLM method
        return $this->dummyLLM->getResponse($query);
    }
}

