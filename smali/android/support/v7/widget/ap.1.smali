.class final Landroid/support/v7/widget/ap;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/an;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/an;)V
    .locals 0

    .prologue
    .line 1520
    iput-object p1, p0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/an;B)V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ap;-><init>(Landroid/support/v7/widget/an;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/an;

    invoke-static {v0}, Landroid/support/v7/widget/an;->b(Landroid/support/v7/widget/an;)V

    .line 1524
    return-void
.end method
