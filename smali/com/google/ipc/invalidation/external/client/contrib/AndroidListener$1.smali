.class Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;
.super Ljava/lang/Object;
.source "AndroidListener.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/InvalidationListener;


# instance fields
.field final synthetic this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-virtual {v0, p2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->informError(Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V

    .line 189
    return-void
.end method

.method public final informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)V

    .line 165
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->informRegistrationFailure([BLcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    .line 167
    return-void
.end method

.method public final informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->informRegistrationSuccess(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    .line 157
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->informRegistrationStatus([BLcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V

    .line 159
    return-void
.end method

.method public invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-virtual {p3}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->invalidate(Lcom/google/ipc/invalidation/external/client/types/Invalidation;[B)V

    .line 173
    return-void
.end method

.method public invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->invalidateAll([B)V

    .line 184
    return-void
.end method

.method public invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-virtual {p3}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/types/ObjectId;[B)V

    .line 179
    return-void
.end method

.method public final ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    .line 143
    sput-object v0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->lastClientIdForTest:Lcom/google/ipc/invalidation/b/c;

    .line 144
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->ready([B)V

    .line 145
    return-void
.end method

.method public final reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$1;->this$0:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;

    # getter for: Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->state:Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
    invoke-static {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->access$000(Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;)Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->getClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->reissueRegistrations([B)V

    .line 151
    return-void
.end method
