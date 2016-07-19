.class Lorg/chromium/chrome/browser/omnibox/UrlBar$2;
.super Ljava/lang/Object;
.source "UrlBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$2;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$2;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    .line 477
    return-void
.end method
