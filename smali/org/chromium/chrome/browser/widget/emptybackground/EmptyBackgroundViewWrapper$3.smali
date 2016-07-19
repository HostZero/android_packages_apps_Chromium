.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$3;
.super Ljava/lang/Object;
.source "EmptyBackgroundViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$3;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$3;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->uninitialize()V

    .line 124
    return-void
.end method
