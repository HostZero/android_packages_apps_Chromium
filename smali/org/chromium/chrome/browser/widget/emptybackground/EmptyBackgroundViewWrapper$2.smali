.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "EmptyBackgroundViewWrapper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$2;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$2;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 90
    return-void
.end method
