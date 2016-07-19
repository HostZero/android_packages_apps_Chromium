.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$11;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$11;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$700(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->showOverview(Z)V

    .line 1239
    return-void
.end method
