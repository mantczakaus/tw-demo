nextflow.enable.dsl=2

process SAYHELLO {

	debug true
	publishDir "/scratch/director2172/mantczak/demo/results"

	output:
	path "hello.txt"

	script:
	"""
	echo 'Hello world!' > hello.txt
	"""

}

process SAYCZESC {

	publishDir "/scratch/director2172/mantczak/demo/results"

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
