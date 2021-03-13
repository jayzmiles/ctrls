-- ctrls
--   momentary button with
--   optional latching encoder
-- --------------------------------
-- press + hold k2 to activate
--   + spin e2 to (un)latch k2
--
-- 6a206d


-----------------------------------------------
-- initialization

function init()
    k2_hold = 0
    k2_active = 0
    k2_latched = 0
    redraw()
end

-----------------------------------------------
-- controls

-- encoders

function enc(n,d)
    -- capture e2(latch)
    if n == 2 then
        k2_latched = math.min(1,(math.max(k2_latched + d,0)))
        print(k2_latched)
    end
    redraw()
end

-- keys

function key(n,z)
    if k2_latched == 0 then
        -- capture k2(shift)
        if n == 2 then
            k2_hold = z
            k2_active = z
        end

    elseif k2_latched == 1 then
        -- capture k2(shift)
        if n == 2 then
            k2_hold = z
        end
    end
    redraw()
end

-----------------------------------------------
-- graphics

function redraw()
    screen.clear()
    screen.level(15)

    -- comments
    screen.move(0, 10)
    screen.text("press + hold k2 to activate")
    screen.move(0, 20)
    screen.text(" + spin e2 to (un)latch k2")

    -- status
    screen.move(128, 40)

    if k2_active == 1 and k2_latched == 0 then
        screen.text_right("k2: active")
        screen.move(128, 60)
        screen.level(2)
        screen.text_right("+ spin e2 cw: latch")
    elseif k2_active == 1 and k2_latched == 1 then
            if k2_hold == 1 then
                screen.text_right("k2: latched")
                screen.move(128, 60)
                screen.level(2)
                screen.text_right("+ spin e2 ccw: unlatch")
            else
                screen.level(8)
                screen.text_right("k2: latched")
            end
    else
        screen.level(2)
        screen.text_right("k2: inactive")
    end
    screen.update()
end

-----------------------------------------------
-- dev

function r()
    norns.script.load(norns.state.script)
end