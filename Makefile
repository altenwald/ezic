
zones:
	wget "https://data.iana.org/time-zones/tzdata-latest.tar.gz"
	mkdir -p priv/tzdata
	tar -xvzf tzdata-latest.tar.gz -C priv/tzdata
	rm tzdata-latest.tar.gz
	erl -pa ebin -s ezic_generator generate -s erlang halt -noinput -noshell
	erlc -o ebin zones/*.erl
