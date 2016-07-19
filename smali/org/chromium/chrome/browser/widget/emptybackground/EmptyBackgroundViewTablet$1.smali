.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;
.super Ljava/lang/Object;
.source "EmptyBackgroundViewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->launchNTP()V

    goto :goto_0
.end method
