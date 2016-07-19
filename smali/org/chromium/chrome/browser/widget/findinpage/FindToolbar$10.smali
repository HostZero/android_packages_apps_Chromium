.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->showKeyboard()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$700(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V

    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->sendAccessibilityEvent(I)V

    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$10;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->sendAccessibilityEvent(I)V

    .line 359
    return-void
.end method
