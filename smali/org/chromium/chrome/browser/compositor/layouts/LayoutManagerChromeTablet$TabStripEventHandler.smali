.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;
.super Ljava/lang/Object;
.source "LayoutManagerChromeTablet.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)V

    return-void
.end method


# virtual methods
.method public click(FFZI)V
    .locals 8

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->click(JFFZI)V

    .line 244
    return-void
.end method

.method public drag(FFFFFF)V
    .locals 10

    .prologue
    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->drag(JFFFFFF)V

    .line 239
    return-void
.end method

.method public fling(FFFF)V
    .locals 8

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->fling(JFFFF)V

    .line 249
    return-void
.end method

.method public onDown(FFZI)V
    .locals 8

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->onDown(JFFZI)V

    .line 229
    return-void
.end method

.method public onLongPress(FF)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->onLongPress(JFF)V

    .line 254
    return-void
.end method

.method public onPinch(FFFFZ)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onUpOrCancel()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->onUpOrCancel(J)V

    .line 234
    return-void
.end method
