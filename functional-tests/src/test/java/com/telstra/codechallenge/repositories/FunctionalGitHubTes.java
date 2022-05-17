package com.telstra.codechallenge.repositories;

import com.intuit.karate.junit5.Karate;

public class FunctionalGitHubTes {
	
	@Karate.Test
	Karate testTotalRegisterRepositories() {
	    return Karate.run("repositories").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate testTotalRegisterUsers() {
	    return Karate.run("users").relativeTo(getClass());
	}
}
