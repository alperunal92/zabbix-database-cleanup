#keep 1 week of history and 1 months of trends

delete FROM alerts where age(to_timestamp(alerts.clock)) > interval '30 days';

delete FROM acknowledges where age(to_timestamp(acknowledges.clock)) > interval '30 days';

delete FROM events where age(to_timestamp(events.clock)) > interval '30 days';

delete FROM history where age(to_timestamp(history.clock)) > interval '30 days';
delete FROM history_uint where age(to_timestamp(history_uint.clock)) > interval '30 days' ;
delete FROM history_str  where age(to_timestamp(history_str.clock)) > interval '30 days' ;
delete FROM history_text where age(to_timestamp(history_text.clock)) > interval '30 days' ;
delete FROM history_log where age(to_timestamp(history_log.clock)) > interval '30 days' ;

delete FROM trends where age(to_timestamp(trends.clock)) > interval '30 days';
delete FROM trends_uint where age(to_timestamp(trends_uint.clock)) > interval '30 days' ;
