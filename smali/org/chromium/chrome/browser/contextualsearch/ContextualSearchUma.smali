.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;
.super Ljava/lang/Object;
.source "ContextualSearchUma.java"


# static fields
.field private static final ENTER_CLOSED_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final ENTER_EXPANDED_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final ENTER_MAXIMIZED_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final ENTER_PEEKED_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final EXIT_CLOSED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final EXIT_EXPANDED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final EXIT_MAXIMIZED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final EXIT_PEEKED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

.field private static final ICON_SPRITE_ANIMATION_CODES:Ljava/util/Map;

.field private static final PROMO_BY_GESTURE_CODES:Ljava/util/Map;

.field private static final SEEN_BY_GESTURE_CODES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_CLOSED_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_PEEKED_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_EXPANDED_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_MAXIMIZED_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 374
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_CLOSED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_PEEKED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_EXPANDED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_MAXIMIZED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->SEEN_BY_GESTURE_CODES:Ljava/util/Map;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->PROMO_BY_GESTURE_CODES:Ljava/util/Map;

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v4, v4, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v4, v5, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v5, v4, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v5, v5, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v4, v4, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v4, v5, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v5, v4, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v1, v5, v5, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ICON_SPRITE_ANIMATION_CODES:Ljava/util/Map;

    .line 509
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method private static getPanelSeenByGestureStateCode(ZZ)I
    .locals 4

    .prologue
    .line 937
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->SEEN_BY_GESTURE_CODES:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getPreferenceValue()I
    .locals 2

    .prologue
    .line 955
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchUninitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 961
    :goto_0
    return v0

    .line 958
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    const/4 v0, 0x2

    goto :goto_0

    .line 961
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getPromoByGestureStateCode(IZ)I
    .locals 4

    .prologue
    .line 948
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->PROMO_BY_GESTURE_CODES:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I
    .locals 1

    .prologue
    .line 922
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 923
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 926
    :cond_0
    return p3
.end method

.method public static logBasePageProtocol(Z)V
    .locals 3

    .prologue
    .line 601
    const-string/jumbo v1, "Search.ContextualSearchBasePageProtocol"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 603
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logDuration(ZZJ)V
    .locals 2

    .prologue
    .line 672
    if-eqz p0, :cond_0

    .line 673
    const-string/jumbo v0, "Search.ContextualSearchDurationSeen"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p2, p3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 682
    :goto_0
    return-void

    .line 675
    :cond_0
    if-eqz p1, :cond_1

    .line 676
    const-string/jumbo v0, "Search.ContextualSearchDurationUnseenChained"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p2, p3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 679
    :cond_1
    const-string/jumbo v0, "Search.ContextualSearchDurationUnseen"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p2, p3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method public static logFallbackSearchRequestOutcome(Z)V
    .locals 3

    .prologue
    .line 804
    const-string/jumbo v1, "Search.ContextualSearchFallbackSearchRequestStatus"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 807
    return-void

    .line 804
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logFirstStateEntry(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 827
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$1;->$SwitchMap$org$chromium$chrome$browser$compositor$bottombar$OverlayPanel$PanelState:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 859
    :goto_0
    return-void

    .line 829
    :pswitch_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_CLOSED_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p0, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 831
    const-string/jumbo v1, "Search.ContextualSearchEnterClosed"

    const/16 v2, 0xb

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 836
    :pswitch_1
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_PEEKED_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p0, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 838
    const-string/jumbo v1, "Search.ContextualSearchEnterPeeked"

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 843
    :pswitch_2
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_EXPANDED_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p0, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 845
    const-string/jumbo v1, "Search.ContextualSearchEnterExpanded"

    invoke-static {v1, v0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 850
    :pswitch_3
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ENTER_MAXIMIZED_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p0, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 852
    const-string/jumbo v1, "Search.ContextualSearchEnterMaximized"

    invoke-static {v1, v0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static logFirstStateExit(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$1;->$SwitchMap$org$chromium$chrome$browser$compositor$bottombar$OverlayPanel$PanelState:[I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 899
    :goto_0
    return-void

    .line 873
    :pswitch_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_CLOSED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p1, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 875
    const-string/jumbo v1, "Search.ContextualSearchExitClosed"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 879
    :pswitch_1
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_PEEKED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p1, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 881
    const-string/jumbo v1, "Search.ContextualSearchExitPeeked"

    const/16 v2, 0xb

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 885
    :pswitch_2
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_EXPANDED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p1, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 887
    const-string/jumbo v1, "Search.ContextualSearchExitExpanded"

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 891
    :pswitch_3
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->EXIT_MAXIMIZED_TO_STATE_CHANGE_CODES:Ljava/util/Map;

    invoke-static {p1, p2, v0, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getStateChangeCode(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Ljava/util/Map;I)I

    move-result v0

    .line 893
    const-string/jumbo v1, "Search.ContextualSearchExitMaximized"

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static logHistogramByGesture(ZZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 972
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getPanelSeenByGestureStateCode(ZZ)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 975
    return-void
.end method

.method public static logIconSpriteAnimated(ZZZ)V
    .locals 3

    .prologue
    .line 764
    const-string/jumbo v1, "Search.ContextualSearchIconSpriteAnimated"

    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->ICON_SPRITE_ANIMATION_CODES:Ljava/util/Map;

    new-instance v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    invoke-direct {v2, p0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;-><init>(ZZZ)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 768
    return-void
.end method

.method public static logLowPrioritySearchRequestOutcome(Z)V
    .locals 3

    .prologue
    .line 794
    const-string/jumbo v1, "Search.ContextualSearchLowPrioritySearchRequestStatus"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 797
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logNormalPrioritySearchRequestOutcome(Z)V
    .locals 3

    .prologue
    .line 784
    const-string/jumbo v1, "Search.ContextualSearchNormalPrioritySearchRequestStatus"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 787
    return-void

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logPeekPromoOutcome(ZZZ)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 636
    .line 637
    if-eqz p0, :cond_2

    .line 638
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 645
    :goto_0
    if-eq v0, v1, :cond_0

    .line 646
    const-string/jumbo v1, "Search.ContextualSearchPeekPromoOutcome"

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 649
    :cond_0
    return-void

    .line 638
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    if-eqz p1, :cond_4

    .line 641
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static logPeekPromoShowCount(IZ)V
    .locals 1

    .prologue
    .line 621
    const-string/jumbo v0, "Search.ContextualSearchPeekPromoCount"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 622
    if-eqz p1, :cond_0

    .line 623
    const-string/jumbo v0, "Search.ContextualSearchPeekPromoCountUntilOpened"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 626
    :cond_0
    return-void
.end method

.method public static logPreferenceChange(Z)V
    .locals 3

    .prologue
    .line 611
    const-string/jumbo v1, "Search.ContextualSearchPreferenceStateChange"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 613
    return-void

    .line 611
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static logPreferenceState()V
    .locals 3

    .prologue
    .line 517
    const-string/jumbo v0, "Search.ContextualSearchPreferenceState"

    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getPreferenceValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 519
    return-void
.end method

.method public static logPrefetchedSearchNavigatedDuration(JZ)V
    .locals 2

    .prologue
    .line 724
    if-eqz p2, :cond_0

    const-string/jumbo v0, "Search.ContextualSearchResolvedSearchDuration"

    .line 726
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 728
    return-void

    .line 724
    :cond_0
    const-string/jumbo v0, "Search.ContextualSearchLiteralSearchDuration"

    goto :goto_0
.end method

.method public static logPromoOpenCount(I)V
    .locals 1

    .prologue
    .line 563
    const-string/jumbo v0, "Search.ContextualSearchPromoOpenCount"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 564
    return-void
.end method

.method public static logPromoOutcome(Z)V
    .locals 3

    .prologue
    .line 657
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getPreferenceValue()I

    move-result v0

    .line 658
    const-string/jumbo v1, "Search.ContextualSearchFirstRunFlowOutcome"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 660
    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->getPromoByGestureStateCode(IZ)I

    move-result v0

    .line 661
    const-string/jumbo v1, "Search.ContextualSearchPromoOutcomeByGesture"

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 663
    return-void
.end method

.method public static logPromoSeen(ZZ)V
    .locals 3

    .prologue
    .line 737
    const-string/jumbo v1, "Search.ContextualSearchFirstRunPanelSeen"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 739
    const-string/jumbo v0, "Search.ContextualSearchPromoSeenByGesture"

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logHistogramByGesture(ZZLjava/lang/String;)V

    .line 740
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logPromoTapsBeforeFirstOpen(I)V
    .locals 1

    .prologue
    .line 552
    const-string/jumbo v0, "Search.ContextualSearchPromoTapsBeforeFirstOpen"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public static logPromoTapsForNeverOpened(I)V
    .locals 1

    .prologue
    .line 541
    const-string/jumbo v0, "Search.ContextualSearchPromoTapsForNeverOpened"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 543
    return-void
.end method

.method public static logPromoTapsRemaining(I)V
    .locals 1

    .prologue
    .line 527
    if-ltz p0, :cond_0

    .line 528
    const-string/jumbo v0, "Search.ContextualSearchPromoTapsRemaining"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 531
    :cond_0
    return-void
.end method

.method public static logResultsSeen(ZZ)V
    .locals 3

    .prologue
    .line 749
    const-string/jumbo v1, "Search.ContextualSearchResultsSeen"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 751
    const-string/jumbo v0, "Search.ContextualSearchResultsSeenByGesture"

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logHistogramByGesture(ZZLjava/lang/String;)V

    .line 752
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logSearchPanelLoadDuration(ZJ)V
    .locals 3

    .prologue
    .line 692
    if-eqz p0, :cond_0

    .line 693
    const-string/jumbo v0, "Search.ContextualSearchDurationPrefetched"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 702
    :goto_0
    if-nez p0, :cond_1

    const/4 v0, 0x2

    .line 704
    :goto_1
    const-string/jumbo v1, "Search.ContextualSearchPrefetchSummary"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 706
    return-void

    .line 696
    :cond_0
    const-string/jumbo v0, "Search.ContextualSearchDurationNonPrefetched"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 702
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static logSearchTermResolutionDuration(J)V
    .locals 2

    .prologue
    .line 713
    const-string/jumbo v0, "Search.ContextualSearchResolutionDuration"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 715
    return-void
.end method

.method public static logSearchTermResolvedWords(Z)V
    .locals 3

    .prologue
    .line 591
    const-string/jumbo v1, "Search.ContextualSearchResolvedTermWords"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 593
    return-void

    .line 591
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logSelectionIsValid(Z)V
    .locals 3

    .prologue
    .line 775
    const-string/jumbo v1, "Search.ContextualSearchSelectionValid"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 777
    return-void

    .line 775
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logSerpLoadedOnClose(Z)V
    .locals 3

    .prologue
    .line 814
    const-string/jumbo v1, "Search.ContextualSearchSerpLoadedOnClose"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 816
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logTapsSinceOpenForDecided(I)V
    .locals 1

    .prologue
    .line 582
    const-string/jumbo v0, "Search.ContextualSearchTapsSinceOpenDecided"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 584
    return-void
.end method

.method public static logTapsSinceOpenForUndecided(I)V
    .locals 1

    .prologue
    .line 572
    const-string/jumbo v0, "Search.ContextualSearchTapsSinceOpenUndecided"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 574
    return-void
.end method

.method public static logTranslateOnebox(Z)V
    .locals 3

    .prologue
    .line 907
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 908
    :goto_0
    const-string/jumbo v1, "Search.ContextualSearchShouldTranslate"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 910
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
