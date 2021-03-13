-- ctrls
--   independent momentary and
--   toggle buttons
-- --------------------------------
-- press + hold k2 to activate
-- press k3 to toggle activation
--
-- 6a206d


-----------------------------------------------
-- initialization

function init()
    k2_active = 0
    k3_active = 0
    redraw()
end

-----------------------------------------------
-- controls

-- encoders

function enc(n,d)
    -- nothing here
end

-- keys

function key(n,z)
    -- capture k2(momentary)
    if n == 2 then
        k2_active = z
    end
    -- capture k3(toggle)
    if n == 3 and z == 1 then
        k3_active = 1 - k3_active
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
    screen.text("press k3 to toggle activation")

    -- status
    screen.move(128, 40)

    if k2_active == 1 then
        screen.level(15)
        screen.text_right("k2: active")
    else
        screen.level(2)
        screen.text_right("k2: inactive")
    end

    screen.move(128, 60)

    if k3_active == 1 then
        screen.level(15)
        screen.text_right("k3: active")
    else
        screen.level(2)
        screen.text_right("k3: inactive")
    end
    screen.update()
end

-----------------------------------------------
-- dev

function r()
    norns.script.load(norns.state.script)
end