.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$9;
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
    .line 308
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$9;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$9;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 312
    return-void
.end method
