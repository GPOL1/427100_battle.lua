RegisterTableGoal(GOAL_OldLionOfArena427100_Battle, "OldLionOfArena427100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldLionOfArena427100_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:SetStringIndexedNumber("Chase_Rate", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
end

Goal.Activate = function (_, actor, goals)
    Init_Pseudo_Global(actor, goals)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    local distance = actor:GetDist(TARGET_ENE_0)
    local random = actor:GetRandam_Int(1, 100)
    local f2_local1 = actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    actor:GetEventRequest()
    actor:SetStringIndexedNumber("Chase_Rate", (1 - actor:GetHpRate(TARGET_SELF)) * 100)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
	actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000000)
    actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000000)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000001)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000002)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000003)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000004)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000005)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000006)
	actor:AddObserveSpecialEffectAttribute(TARGET_FRI_0, 30000007)
    actor:DeleteObserve(0)
    actor:DeleteObserve(1)
    if f2_local1 == 1 and actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        probabilities[44] = 100
    elseif f2_local1 == 1 and actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        probabilities[44] = 70
        probabilities[47] = 15
    else
		if distance >= 10 then
            probabilities[39] = 100
		elseif distance >= 3 then
			probabilities[44] = 100
        else
			if actor:HasSpecialEffectId(TARGET_FRI_0, 30000007) == true then
				probabilities[44] = 100
			else
				probabilities[43] = 100
			end
		end
    end
    probabilities[1] = SetCoolTime(actor, goals, 3000, 8, probabilities[1], 1)
    probabilities[2] = SetCoolTime(actor, goals, 3007, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(actor, goals, 3005, 15, probabilities[3], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3010, 12, probabilities[4], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3014, 8, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3001, 5, probabilities[5], 1)
    probabilities[6] = SetCoolTime(actor, goals, 3021, 5, probabilities[6], 1)
    probabilities[7] = SetCoolTime(actor, goals, 3019, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(actor, goals, 3001, 5, probabilities[8], 1)
    probabilities[12] = SetCoolTime(actor, goals, 3017, 10, probabilities[12], 1)
    probabilities[22] = SetCoolTime(actor, goals, 3025, 25, probabilities[22], 0)
    probabilities[49] = SetCoolTime(actor, goals, 6002, 4, probabilities[49], 0)
    probabilities[49] = SetCoolTime(actor, goals, 6003, 4, probabilities[49], 0)
    acts[1] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act01)
    acts[2] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act02)
    acts[3] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act03)
    acts[4] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act04)
    acts[5] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act05)
    acts[6] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act06)
    acts[7] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act07)
    acts[8] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act08)
    acts[10] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act10)
    acts[11] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act11)
    acts[12] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act12)
    acts[20] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act20)
    acts[21] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act21)
    acts[22] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act22)
    acts[25] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act25)
    acts[30] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act30)
    acts[31] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act31)
    acts[32] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act32)
    acts[33] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act33)
    acts[39] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act39)
	acts[40] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act40)
    acts[41] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act41)
    acts[42] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act42)
    acts[43] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act43)
    acts[44] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act44)
    acts[45] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act45)
    acts[46] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act46)
    acts[47] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act47)
    acts[48] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act48)
    acts[49] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act49)
    acts[50] = REGIST_FUNC(actor, goals, OldLionOfArena427100_Act50)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, OldLionOfArena427100_ActAfter_AdjustSpace), f2_local0)
end

function OldLionOfArena427100_Act39(actor, goals, _)
    local f5_local0 = 10 + actor:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act40(_, goals, _)
    local f22_local0 = 2
    local distance = 2
    local is_walking = true
    local action = -1
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act41(_, goals, _)
    local f23_local0 = 2
    local distance = 8
    local is_walking = false
    local action = -1
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f23_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act42(arg0, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(40, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act43(actor, goals, _)
    local f25_local0 = 10
    local forward_priority = 0
    local back_priority = 100
    local left_priority = 0
    local right_priority = 0
    local target = TARGET_ENE_0
    local safe_distance = 1
    local turn_time_before = 0
    local success_if_impossible = true
    goals:AddSubGoal(GOAL_COMMON_StepSafety, f25_local0, forward_priority, back_priority, left_priority, right_priority, target, safe_distance, turn_time_before, success_if_impossible)
    actor:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act44(actor, goals, _)
    local random = actor:GetRandam_Int(0, 1)
    local f26_local0 = 2
    local target = TARGET_ENE_0
    local f26_local1 = random
    local f26_local2 = 15
    local f26_local3 = true
    local f26_local4 = -1
    local f26_local5 = GUARD_GOAL_DESIRE_RET_Failed
    goals:AddSubGoal(GOAL_COMMON_SidewayMove, f26_local0, target, f26_local1, f26_local2, f26_local3, isLifeSuccess, f26_local4, f26_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act45(actor, goals, _)
    local f27_local0 = 6
    local is_walking = true
    local action = -1
	local dist = actor:GetDist(TARGET_ENE_0)
	local distance = 8
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, TARGET_ENE_0, distance, TARGET_SELF, is_walking, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act46(_, goals, _)
    local f28_local0 = 3
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = 8
    local f28_local3 = TARGET_ENE_0
    local f28_local4 = true
    local f28_local5 = -1
    local f28_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local7 = false
    local f28_local8 = 1
    goals:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act47(arg0, goals, _)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f29_local0 = 4
        local f29_local1 = 6003
        local f29_local2 = TARGET_ENE_0
        local f29_local3 = 0
        local f29_local4 = AI_DIR_TYPE_R
        local f29_local5 = 0
        goals:AddSubGoal(GOAL_COMMON_SpinStep, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local f29_local0 = 4
        local f29_local1 = 6002
        local f29_local2 = TARGET_ENE_0
        local f29_local3 = 0
        local f29_local4 = AI_DIR_TYPE_L
        local f29_local5 = 0
        goals:AddSubGoal(GOAL_COMMON_SpinStep, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
    end
end

function OldLionOfArena427100_Act48(arg0, goals, _)
    local f30_local0 = 4
    local f30_local1 = 6000
    local f30_local2 = TARGET_ENE_0
    local f30_local3 = 0
    local f30_local4 = AI_DIR_TYPE_L
    local f30_local5 = 0
    goals:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5)
    arg0:SetTimer(1, arg0:GetRandam_Int(2, 3.5))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act49(actor, goals, _)
    local random0 = actor:GetRandam_Int(1, 2)
    local random1 = actor:GetRandam_Int(1, 3)
    goals:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, random0, random1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_Act50(_, goals, _)
    local f32_local0 = 10
    local action = 3001
    local f32_local1 = 3003
    local success_distance = 999
    local turn_time_before = 0
    local front_decision_angle = 0
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f32_local0, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboFinal, f32_local0, f32_local1, TARGET_ENE_0, success_distance, 0, 0, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function OldLionOfArena427100_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_OldLionOfArena427100_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    if actor:IsLadderAct(TARGET_SELF) then
        return false
    end
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    if actor:IsInterupt(INTERUPT_Damaged) then
    else
    end
	if actor:IsInterupt(INTERUPT_ActivateSpecialEffect) then
	else
	end
    if actor:IsInterupt(INTERUPT_Shoot) and actor:HasSpecialEffectId(TARGET_SELF, 5025) and distance > 6 then
        goals:ClearSubGoal()
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            goals:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            goals:AddSubGoal(GOAL_COMMON_SpinStep, 0.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
        return true
    elseif actor:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if actor:IsInsideObserve(1) then
            goals:ClearSubGoal()
            actor:Replaning()
            actor:DeleteObserve(0)
            actor:DeleteObserve(1)
            return true
        elseif actor:IsInsideObserve(0) and actor:GetTimer(1) <= 0 then
            if not not actor:HasSpecialEffectId(TARGET_SELF, 13355) or actor:GetHpRate(TARGET_SELF) <= 0.4 then
                actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            end
            actor:SetTimer(0, 7)
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
            actor:DeleteObserve(0)
            actor:DeleteObserve(1)
            return true
        end
	end
	if actor:HasSpecialEffectId(TARGET_FRI_0, 30000000) == true then
		local rand2 = actor:GetRandam_Int(1, 100)
		local rand = actor:GetRandam_Int(1, 100)
		goals:ClearSubGoal()
		if distance <= 10 then 
			goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
		else
            if distance2 > 7 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, 999, 0, 0)
            else
			    goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
		end
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000000)		
		return true
	elseif actor:HasSpecialEffectId(TARGET_FRI_0, 30000001) == true then
		local f5_local0 = 4 + actor:GetMapHitRadius(TARGET_SELF)
		goals:ClearSubGoal()
		Approach_Act_Flex(actor, goals, f5_local0, 0, 999, 100, 0, 2, 2)
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000001)		
		return true
    elseif actor:HasSpecialEffectId(TARGET_FRI_0, 30000002) == true then
		local f5_local0 = 2 + actor:GetMapHitRadius(TARGET_SELF)
		local rand = actor:GetRandam_Int(1, 100)
		goals:ClearSubGoal()
		if rand >= 50 then
			goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3000, TARGET_ENE_0, 6, 0, 0, 0, 0)
            if distance >= 6 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 6, 0, 0)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 6, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 6, 0, 0)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 6, 0, 0)
            end
		else
			goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            if distance >= 6 then
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3016, TARGET_ENE_0, 6, 0, 0)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 6, 0, 0)
            else
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 6, 0, 0)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, 6, 0, 0)
				goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 6, 0, 0)
            end
		end
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000002)		
		return true
    elseif actor:HasSpecialEffectId(TARGET_FRI_0, 30000003) == true then
		local f5_local0 = 1 + actor:GetMapHitRadius(TARGET_SELF)
		local rand = actor:GetRandam_Int(1, 100)
		goals:ClearSubGoal()
        Approach_Act_Flex(actor, goals, f5_local0, 0, 999, 100, 0, 2, 2)
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3017, TARGET_ENE_0, 6, 0, 0, 0, 0)
		if rand >= 50 then
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3016, TARGET_ENE_0, 6, 0, 0)
		else
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 6, 0, 0)
		end
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000003)		
		return true
    elseif actor:HasSpecialEffectId(TARGET_FRI_0, 30000004) == true then
		local f5_local0 = 1 + actor:GetMapHitRadius(TARGET_SELF)
		local rand = actor:GetRandam_Int(1, 100)
		goals:ClearSubGoal()
		if distance >= 6 then
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 6, 0, 0)
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3015, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 6, 0, 0)
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3005, TARGET_ENE_0, 6, 0, 0)
		else
            Approach_Act_Flex(actor, goals, f5_local0, 0, 999, 100, 0, 2, 2)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3017, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 6, 0, 0)
			goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3016, TARGET_ENE_0, 6, 0, 0)
		end
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000004)		
		return true
    elseif actor:HasSpecialEffectId(TARGET_FRI_0, 30000005) == true then
		local f5_local0 = 1 + actor:GetMapHitRadius(TARGET_SELF)
		local rand = actor:GetRandam_Int(1, 100)
		goals:ClearSubGoal()
        actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000005)
        Approach_Act_Flex(actor, goals, f5_local0, 0, 999, 100, 0, 2, 2)
        goals:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3003, TARGET_ENE_0, 6, 0, 0, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3004, TARGET_ENE_0, 6, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3012, TARGET_ENE_0, 999, 0, 0)
		actor:DeleteObserveSpecialEffectAttribute(TARGET_FRI_0, 30000005)		
		return true
    elseif actor:HasSpecialEffectId(TARGET_SELF, 30000000) == true then
        local distance2 = actor:GetDist(TARGET_ENE_0)
        if distance2 > 7 then
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3014, TARGET_ENE_0, 999, 0, 0)
        elseif distance2 > 4 then
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3013, TARGET_ENE_0, 999, 0, 0)
        else
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3020, TARGET_ENE_0, 999, 0, 0)
        end
	end
	return false
end

RegisterTableGoal(GOAL_OldLionOfArena427100_AfterAttackAct, "OldLionOfArena427100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldLionOfArena427100_AfterAttackAct, true)

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end
