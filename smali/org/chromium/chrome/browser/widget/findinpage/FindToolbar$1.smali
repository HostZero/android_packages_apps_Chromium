.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "FindToolbar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 179
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 180
    :cond_0
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 175
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 170
    return-void
.end method
