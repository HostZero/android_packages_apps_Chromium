.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$8;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$8;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$8;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->hideKeyboardAndStartFinding(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)V

    .line 302
    return-void
.end method
