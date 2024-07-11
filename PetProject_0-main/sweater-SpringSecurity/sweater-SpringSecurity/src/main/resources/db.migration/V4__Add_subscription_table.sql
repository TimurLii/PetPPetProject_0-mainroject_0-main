CREATE TABLE user_subscriptions (
                                    channel_id bigint NOT NULL,
                                    subscriber_id bigint NOT NULL,
                                    PRIMARY KEY (channel_id, subscriber_id),
                                    CONSTRAINT fk_channel_id FOREIGN KEY (channel_id) REFERENCES usr(id),
                                    CONSTRAINT fk_subscriber_id FOREIGN KEY (subscriber_id) REFERENCES usr(id)
);