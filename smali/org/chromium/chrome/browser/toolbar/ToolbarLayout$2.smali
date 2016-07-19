.class Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$2;
.super Ljava/lang/Object;
.source "ToolbarLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
