.class public final Landroid/support/v4/app/p;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# instance fields
.field public a:Landroid/support/v4/g/a;

.field public b:Ljava/util/ArrayList;

.field public c:Landroid/support/v4/app/I;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .locals 1

    .prologue
    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->b:Ljava/util/ArrayList;

    .line 1451
    new-instance v0, Landroid/support/v4/app/I;

    invoke-direct {v0}, Landroid/support/v4/app/I;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/I;

    return-void
.end method
