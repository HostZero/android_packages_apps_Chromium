.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$2;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlDirectionListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$2;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlDirectionChanged(I)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$2;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-static {v0, p1}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 681
    return-void
.end method
