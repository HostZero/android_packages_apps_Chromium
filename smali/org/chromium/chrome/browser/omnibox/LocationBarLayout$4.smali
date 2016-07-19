.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$4;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$4;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 917
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isDefaultSearchEngineGoogle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$4;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->primeLocationForGeoHeader(Landroid/content/Context;)V

    .line 920
    :cond_0
    return-void
.end method
