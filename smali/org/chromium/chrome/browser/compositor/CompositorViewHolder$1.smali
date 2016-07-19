.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "CompositorViewHolder.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$1;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$1;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onContentChanged()V

    .line 197
    return-void
.end method
