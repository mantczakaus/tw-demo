nextflow.enable.dsl=2
results_path = "$PWD/results"

process SAYHELLO {

	debug true
	publishDir "$results_path/results"

	output:
	path "hello.txt"

	script:
	"""
	echo 'Hello world!' > hello.txt
	"""

}

process SAYCZESC {

	publishDir "$results_path/results"

	output:
	path "czesc.txt"

	script:
	"""
	cowsay czesc! > czesc.txt
	"""

}

workflow {
	SAYHELLO()
	SAYCZESC()
}
