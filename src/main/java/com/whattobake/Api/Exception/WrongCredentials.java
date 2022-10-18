package com.whattobake.Api.Exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code= HttpStatus.UNAUTHORIZED,reason = "Wrong credentials")
public class WrongCredentials extends Exception{
}
