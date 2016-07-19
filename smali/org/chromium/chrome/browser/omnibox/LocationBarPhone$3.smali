.class Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$3;
.super Ljava/lang/Object;
.source "LocationBarPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 261
    return-void
.end method
