.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;
.super Ljava/lang/Object;
.source "ContextualSearchPanelMetrics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentFirstViewTimeNs:J

.field private mDidSearchInvolvePromo:Z

.field private mFirstPeekTimeNs:J

.field private mHasExitedExpanded:Z

.field private mHasExitedMaximized:Z

.field private mHasExitedPeeking:Z

.field private mHasExpanded:Z

.field private mHasMaximized:Z

.field private mIsPromoActive:Z

.field private mIsSearchPanelFullyPreloaded:Z

.field private mIsSerpNavigation:Z

.field private mSearchRequestStartTimeNs:J

.field private mWasActivatedByTap:Z

.field private mWasIconSpriteAnimated:Z

.field private mWasSearchContentViewSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEndingContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Z)Z
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->isOngoingContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOngoingContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStartingNewContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)Z
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logSearchPanelLoadDuration(ZJ)V
    .locals 0

    .prologue
    .line 267
    invoke-static {p1, p2, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logSearchPanelLoadDuration(ZJ)V

    .line 268
    return-void
.end method

.method private onSearchPanelFirstView()V
    .locals 4

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSearchPanelFullyPreloaded:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->logSearchPanelLoadDuration(ZJ)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mContentFirstViewTimeNs:J

    goto :goto_0
.end method


# virtual methods
.method public onPanelNavigatedToPrefetchedSearch(Z)V
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mSearchRequestStartTimeNs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 212
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPrefetchedSearchNavigatedDuration(JZ)V

    .line 213
    return-void
.end method

.method public onPanelStateChanged(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 18

    .prologue
    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->isStartingNewContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)Z

    move-result v10

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->isEndingContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Z)Z

    move-result v11

    .line 52
    if-eqz v10, :cond_11

    invoke-direct/range {p0 .. p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->isOngoingContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    move v9, v4

    .line 53
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_12

    const/4 v4, 0x1

    .line 54
    :goto_1
    sget-object v5, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedPeeking:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_0

    if-eqz v10, :cond_13

    :cond_0
    const/4 v5, 0x1

    .line 56
    :goto_2
    sget-object v6, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_14

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedExpanded:Z

    if-nez v6, :cond_14

    if-nez v4, :cond_14

    const/4 v6, 0x1

    .line 58
    :goto_3
    sget-object v7, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_15

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedMaximized:Z

    if-nez v7, :cond_15

    if-nez v4, :cond_15

    const/4 v4, 0x1

    move v8, v4

    .line 60
    :goto_4
    if-eqz v5, :cond_16

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_16

    const/4 v4, 0x1

    .line 63
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSearchPanelFullyPreloaded:Z

    .line 65
    if-eqz v11, :cond_2

    .line 66
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mDidSearchInvolvePromo:Z

    if-nez v7, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mFirstPeekTimeNs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    .line 69
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    invoke-static {v7, v9, v14, v15}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logDuration(ZZJ)V

    .line 71
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsPromoActive:Z

    if-eqz v7, :cond_17

    .line 73
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasActivatedByTap:Z

    invoke-static {v7, v13}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoSeen(ZZ)V

    .line 78
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasIconSpriteAnimated:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasActivatedByTap:Z

    invoke-static {v7, v13, v14}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logIconSpriteAnimated(ZZZ)V

    .line 81
    :cond_2
    if-eqz v10, :cond_3

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mFirstPeekTimeNs:J

    .line 83
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mContentFirstViewTimeNs:J

    .line 84
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSearchPanelFullyPreloaded:Z

    .line 85
    sget-object v7, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    move-object/from16 v0, p3

    if-ne v0, v7, :cond_18

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasActivatedByTap:Z

    .line 87
    :cond_3
    if-eqz v4, :cond_4

    .line 88
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onSearchPanelFirstView()V

    .line 97
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSerpNavigation:Z

    if-eqz v4, :cond_19

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 99
    :goto_8
    if-nez v10, :cond_6

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExpanded:Z

    if-nez v7, :cond_5

    sget-object v7, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p2

    if-eq v0, v7, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasMaximized:Z

    if-nez v7, :cond_7

    sget-object v7, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p2

    if-ne v0, v7, :cond_7

    .line 102
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logFirstStateEntry(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 106
    :cond_7
    if-eqz v10, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-eqz v8, :cond_a

    .line 108
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logFirstStateExit(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 112
    :cond_a
    if-eqz v5, :cond_1a

    .line 113
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedPeeking:Z

    .line 120
    :cond_b
    :goto_9
    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1c

    .line 121
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExpanded:Z

    .line 125
    :cond_c
    :goto_a
    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_d

    .line 126
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSerpNavigation:Z

    .line 129
    :cond_d
    if-eqz v11, :cond_10

    .line 130
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasMaximized:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExpanded:Z

    if-eqz v4, :cond_f

    .line 131
    :cond_e
    invoke-static {v12}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logSerpLoadedOnClose(Z)V

    .line 133
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mDidSearchInvolvePromo:Z

    .line 134
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    .line 135
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExpanded:Z

    .line 136
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasMaximized:Z

    .line 137
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedPeeking:Z

    .line 138
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedExpanded:Z

    .line 139
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedMaximized:Z

    .line 140
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSerpNavigation:Z

    .line 145
    :cond_10
    return-void

    .line 52
    :cond_11
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_0

    .line 53
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 54
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 56
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 58
    :cond_15
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_4

    .line 60
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 75
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasActivatedByTap:Z

    invoke-static {v7, v13}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logResultsSeen(ZZ)V

    goto/16 :goto_6

    .line 85
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_19
    move-object/from16 v4, p3

    .line 97
    goto/16 :goto_8

    .line 114
    :cond_1a
    if-eqz v6, :cond_1b

    .line 115
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedExpanded:Z

    goto :goto_9

    .line 116
    :cond_1b
    if-eqz v8, :cond_b

    .line 117
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExitedMaximized:Z

    goto/16 :goto_9

    .line 122
    :cond_1c
    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_c

    .line 123
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasMaximized:Z

    goto/16 :goto_a
.end method

.method public onSearchRequestStarted()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mSearchRequestStartTimeNs:J

    .line 180
    return-void
.end method

.method public onSearchResultsLoaded(Z)V
    .locals 4

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mHasMaximized:Z

    if-eqz v0, :cond_2

    .line 197
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mContentFirstViewTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mContentFirstViewTimeNs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 199
    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->logSearchPanelLoadDuration(ZJ)V

    .line 203
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsSearchPanelFullyPreloaded:Z

    .line 204
    return-void
.end method

.method public onSearchTermResolved()V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mSearchRequestStartTimeNs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 187
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logSearchTermResolutionDuration(J)V

    .line 188
    return-void
.end method

.method public setDidSearchInvolvePromo()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mDidSearchInvolvePromo:Z

    .line 152
    return-void
.end method

.method public setIsPromoActive(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mIsPromoActive:Z

    .line 166
    return-void
.end method

.method public setWasIconSpriteAnimated(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasIconSpriteAnimated:Z

    .line 173
    return-void
.end method

.method public setWasSearchContentViewSeen()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->mWasSearchContentViewSeen:Z

    .line 159
    return-void
.end method
