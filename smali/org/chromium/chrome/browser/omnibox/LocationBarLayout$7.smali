.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$7;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$7;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$7;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->onUrlFocusChange(Z)V

    .line 1063
    return-void
.end method
