package com.ianandco


class BusinessException extends RuntimeException {

    BusinessException(message) {
        super(message)
    }

    BusinessException() {}
}
