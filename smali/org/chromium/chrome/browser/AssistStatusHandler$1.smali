.class Lorg/chromium/chrome/browser/AssistStatusHandler$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "AssistStatusHandler.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/AssistStatusHandler;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/AssistStatusHandler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/AssistStatusHandler$1;->this$0:Lorg/chromium/chrome/browser/AssistStatusHandler;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/AssistStatusHandler$1;->this$0:Lorg/chromium/chrome/browser/AssistStatusHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 40
    return-void
.end method
