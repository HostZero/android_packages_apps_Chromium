.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;

.field final synthetic val$urlText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;->this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;->val$urlText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;->this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;->val$urlText:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->findMatchAndLoadUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->access$600(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;Ljava/lang/String;)V

    .line 323
    return-void
.end method
