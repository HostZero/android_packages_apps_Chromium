.class Lorg/chromium/content/browser/ContentView$ContentViewApi23;
.super Lorg/chromium/content/browser/ContentView;
.source "ContentView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView$ContentViewApi23;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    .line 361
    return-void
.end method
