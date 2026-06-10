# Zampone

Config ZMK del layout **Zampone**: la variante essenziale di
[Cotechino_34](https://github.com/fractalysid/zmk-config-cotechino_34) per
**Demetra v2**, tastiera wireless custom su nRF52840 (modulo BMD-340, board ZMK
[`zmk-keyboard-demetra_v2`](https://github.com/fractalysid/zmk-keyboard-demetra_v2)).

Rispetto a Cotechino_34: base layer **QWERTY** al posto di Colemak-DH, solo i
sei layer essenziali (default, utility, symbols, num/fn, keyboard, mouse),
niente macro, niente combo e **niente file segreti** — builda così com'è.

![Layout Zampone](Zampone.png)

Il sorgente del diagramma è [`Zampone.drawio`](Zampone.drawio).

## Layer

- **default** — QWERTY, mod hold-tap sulla bottom row, tap-dance per accentate
- **utility** — navigazione, sticky mods, scorciatoie (Space hold)
- **symbols** — simboli layout italiano, parentesi e valute in tap-dance (Return hold)
- **num/fn** — numeri e F1-F14 (utility+symbols)
- **keyboard** — bluetooth, media, numpad
- **mouse** — puntatore e scroll (symbols+keyboard)

## Build

Dal workspace Keyboards (vedi [kb-build](https://github.com/fractalysid/kb-build)):

```bash
LAYOUT=Zampone ./build-demetra.sh             # entrambe le metà, ZMK v0.3
ZMK_DIR=upstream/zmk/v0.4 LAYOUT=Zampone ./build-demetra.sh   # ZMK v0.4 (HWMv2)
```

Le UF2 finiscono in `artifacts/demetra_v2/`.
