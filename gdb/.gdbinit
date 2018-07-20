set disassembly-flavor intel
set confirm off
set print pretty on

define s
step
refresh
end

define rs
reverse-step
refresh
end

define n
next
refresh
end

define rn
reverse-next
refresh
end

define r
run
refresh
end

define c
continue
refresh
end

define rc
reverse-continue
refresh
end

define finish
finish
refresh
end
