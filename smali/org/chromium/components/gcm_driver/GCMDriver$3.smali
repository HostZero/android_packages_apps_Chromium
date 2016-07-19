.class final Lorg/chromium/components/gcm_driver/GCMDriver$3;
.super Ljava/lang/Object;
.source "GCMDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    iput-object p2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v1, "collapse_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v1, "rawData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 138
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "from"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "collapse_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "rawData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.google.ipc.invalidation.gcmmplex."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    # getter for: Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;
    invoke-static {}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$400()Lorg/chromium/components/gcm_driver/GCMDriver;

    move-result-object v1

    # getter for: Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;
    invoke-static {}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$400()Lorg/chromium/components/gcm_driver/GCMDriver;

    move-result-object v0

    # getter for: Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J
    invoke-static {v0}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$100(Lorg/chromium/components/gcm_driver/GCMDriver;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/components/gcm_driver/GCMDriver$3;->val$appId:Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    # invokes: Lorg/chromium/components/gcm_driver/GCMDriver;->nativeOnMessageReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$500(Lorg/chromium/components/gcm_driver/GCMDriver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 152
    return-void
.end method
