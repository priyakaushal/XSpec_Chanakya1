<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_target_maintain_element_order">
		<title>Maintain the Order of Elements Whenever Possible <lnpid>id-CCCC-10311</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p>Each source element should be converted to its associated target element such that
					the target element will occur in the target document in the same relative order as
					its respective source element did in the source document, so long as <u>the target
						schema does not require a specific order for that target element within that
						target element's parent element</u> (first exception), and <u>there are no other
						instructions regarding the moving of that target element</u> (second exception).
					In other words, when converting elements from the source documents, the order of
					elements as they are encountered in the source documents should in general be
					maintained whenever possible, subject to the two important exceptions mentioned in
					the previous sentence and elaborated below. </p>
				<p>Note that according to this rule, the order of particular target elements within a
					parent target element may be different than the order that these elements are
					listed, noted or otherwise mentioned in these instructions. This includes situations
					when a set of child target elements are specified in these instructions as items in
					a list following instructions regarding the parent target element; the order of the
					items dictates the order that the target elements should occur.</p>
				<p><b>Elaboration regarding first exception:</b> there are ordering constraints imposed
					by the target schema for some elements, requiring that target child elements must
					occur in a certain order within target parent elements, and this order may differ
					from the order of their corresponding source elements in the source documents. In
					this case, the constraints imposed by the target schema must be respected.</p>
				<p><b>Elaboration regarding second exception:</b> there will be occasional scenarios
					when the source elements must not only be converted to particular target elements,
					but must also be shifted to specifically different locations within in the target
					documents. These scenarios will be explicitly mentioned for the source and target
					elements affected and must override the general rule to maintain element order.</p>
			</section>
			<section>
				<title>Processing Instructions</title>
				<p> In the source content there may be <b>processing instructions</b>. For example
					&lt;?page.*?&gt;. If a processing instruction is encountered it should be
					suppressed and not converted into the output.</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2012-01-19: Created. </p>
				<p>2012-05-10: Added instruction for Processing Instructions. </p>
				<p>2012-05-15: Adjusted the language for the instruction.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita  -->
	<xsl:template match="processing-instruction()" priority="25"/>

</xsl:stylesheet>