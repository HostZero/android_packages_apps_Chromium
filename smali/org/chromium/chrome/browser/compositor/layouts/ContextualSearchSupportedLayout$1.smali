.class Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout$1;
.super Ljava/lang/Object;
.source "ContextualSearchSupportedLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideLayout(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->hideContextualSearch(Z)V

    .line 58
    return-void
.end method
