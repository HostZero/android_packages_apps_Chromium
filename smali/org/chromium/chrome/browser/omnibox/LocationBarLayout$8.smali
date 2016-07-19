.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 1418
    return-void
.end method
