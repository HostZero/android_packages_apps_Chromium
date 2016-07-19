.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "EmptyBackgroundViewWrapper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public allTabsPendingClosure(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 84
    return-void
.end method

.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 64
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 74
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 69
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    # invokes: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    .line 79
    return-void
.end method
