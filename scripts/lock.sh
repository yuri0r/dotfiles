#!/bin/bash
i3lock -i $(cat ~/.config/nitrogen/bg-saved.cfg | sed 2s/file=// | head -2 | tail -1)

