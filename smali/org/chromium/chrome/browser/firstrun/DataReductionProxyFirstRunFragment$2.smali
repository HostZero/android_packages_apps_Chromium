.class Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$2;
.super Ljava/lang/Object;
.source "DataReductionProxyFirstRunFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$2;->this$0:Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$2;->this$0:Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;->advanceToNextPage()V

    .line 55
    return-void
.end method
