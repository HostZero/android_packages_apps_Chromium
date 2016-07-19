.class public abstract Landroid/support/v4/app/ak;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field private a:Landroid/support/v4/app/Z;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ak;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1604
    iget-object v1, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    if-eqz v1, :cond_0

    .line 1605
    iget-object v0, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    .line 1607
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/support/v4/app/Z;)V
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    if-eq v0, p1, :cond_0

    .line 1595
    iput-object p1, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    .line 1596
    iget-object v0, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Landroid/support/v4/app/ak;->a:Landroid/support/v4/app/Z;

    .line 2493
    iget-object v1, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    if-eq v1, p0, :cond_0

    .line 2494
    iput-object p0, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    .line 2495
    iget-object v1, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    if-eqz v1, :cond_0

    .line 2496
    iget-object v1, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/Z;)V

    .line 1600
    :cond_0
    return-void
.end method
