select sum(send_amount_scalar) as send_volume, wallets.ledger_location, transfers.kind
from transfers, wallets
where  (transfers.when_created = DATE_TRUNC ('week', CURRENT_TIMESTAMP - interval '1 week'))
group by kind, ledger_location
