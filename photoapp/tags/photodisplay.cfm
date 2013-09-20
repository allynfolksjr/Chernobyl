<cfparam name="attributes.photos" type="array">

<div style="width:700px">
	<cfloop from="1" to="#arrayLen(attributes.photos)#" index="i">
		<cfset photo=attributes.photos[i]>
		<cfoutput>
		<div style="float:left;margin:5px;">
			<div>
				<img src="../images/gallery/#photo.getFileName()#"
					width="150">
			</div>
			<div>
				#photo.getCaption()#
			</div>
			<div>
				#dollarformat(photo.getPrice())#
			</div>
		</div>
		</cfoutput>
	</cfloop>
</div>

<div class="clearfloat"></div>
