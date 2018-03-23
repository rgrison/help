

[Elasticsearch](http://www.elasticsearch.org/) is a powerful open source search and analytics engine, and it's easy to add to your stack as an add-in.

## Add Elasticearch
To add Elasticsearch to your stack, access the add-ins menu, click _Elasticsearch_ and choose the size of your new server. This adds three environment variables to your stack: `ELASTICSEARCH_ADDRESS_INT`, `ELASTICSEARCH_ADDRESS_EXT` and `ELASTICSEARCH_ADDRESS`, which you can use to connect to your Elasticsearch instance.
{% if page.collection == 'legacy_docker' or page.collection == 'maestro' %}
<div class="notice notice-danger">
	<h3>Note</h3>
	<p>For docker stacks this will be added to the host not as a container.</p>
</div>
{% endif %}