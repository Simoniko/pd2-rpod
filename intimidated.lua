		local v = 0
		function CopLogicIntimidated._chk_begin_alarm_pager(data) 
			if managers.groupai:state():whisper_mode() and data.unit:unit_data().has_alarm_pager then
				--local rng = math.random(1,5) -- 20%
				--if rng == "5" then
				local rng = math.random(1,100)
				--managers.chat:send_message(rng)
				if rng <= 20 then -- Thank you @bruh what !
					if v <= 3 then -- 1, 2, 3 | if 4 or more, a pager will trigger	
						data.unit:unit_data().has_alarm_pager = false
						v = v + 1
					end
				end
				
				if rng > 20 or v > 3 then
					data.brain:begin_alarm_pager()	
				end
			end
		end