.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1705
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$10;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setSearchQuery(Ljava/lang/String;)V

    .line 1709
    return-void
.end method
