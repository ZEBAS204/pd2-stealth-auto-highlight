Hooks:PostHook(
	-- function PlayerStandard:_update_fwd_ray()
	PlayerStandard,
	"_update_fwd_ray",
	"auto-highlight-without-aiming-mod",
	function(self)
		if
			alive(self._equipped_unit)
			and managers.groupai:state():whisper_mode() -- Only in stealth
			and self._fwd_ray
			and self._fwd_ray.unit
			and self._equipped_unit:base().check_highlight_unit
		then
			self._equipped_unit:base():check_highlight_unit(self._fwd_ray.unit)
		end
	end
)