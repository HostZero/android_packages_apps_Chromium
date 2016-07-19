.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$2;
.super Ljava/lang/Object;
.source "EmptyBackgroundViewTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$2;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "MobileToolbarShowMenu"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 101
    return-void
.end method
