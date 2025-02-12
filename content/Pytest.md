
# Fixtures 
resources:
* https://www.youtube.com/watch?v=ScEQRKwUePI&t=602s&ab_channel=anthonywritescode
## Async fixtures

Return values needs to be yielded and marked with the @pytest_asyncio.fixture decorator:

```python
@pytest_asyncio.fixture
async def game_fix_flop(monkeypatch, player_list_fix):
	game = Game(sb_amount=_TESTING_SB_AMOUNT, initial_player_funds=_TESTING_INITIAL_PLAYER_FUNDS)
	
	for player in player_list_fix:
		game.add_player(player.sid, player.name)
		game.initialize_hand() 
	
	preflop_actions = [
	{'sid' : '3', 'amount_bet' : 40, 'action' : "call"},
	{'sid' : '1', 'amount_bet' : 20, 'action' : "call"},
	{'sid' : '2', 'amount_bet' : 0, 'action' : "check"},
	]
	
	monkeypatch.setattr(Player, "request_betting_response", AsyncMock(side_effect=preflop_actions))
	
	await game.betting_round("PREFLOP")
	
	yield game
```

# Commands

Use the -s flag to print 
```bash
pytest tests/preflop_betting_tests.py -s
```

Running only one specific test function with the use of "::"

```shell
pytest tests/preflop_betting_tests.py::my_specific_test_func
```