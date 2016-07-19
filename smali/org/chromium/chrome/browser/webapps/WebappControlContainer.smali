.class public Lorg/chromium/chrome/browser/webapps/WebappControlContainer;
.super Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;
.source "WebappControlContainer.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/ControlContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getProgressBarDrawingInfo(Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappControlContainer;->getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
