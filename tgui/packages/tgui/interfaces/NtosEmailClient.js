import { useBackend } from '../backend';
import { Box, Button, Section, Input, Table, Icon, Flex, NoticeBox } from '../components';
import { Fragment } from 'inferno';
import { NtosWindow } from '../layouts';
import { FlexItem } from '../components/Flex';

export const NtosEmailClient = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    login,
    password,
    error,
    current_message,
    stored_login,
    stored_password,
  } = data;
  return (
    <NtosWindow resizable>
      <NtosWindow.Content scrollable>
      {error && (
        <NoticeBox>
          ERROR: {error}
          <Button
            key="logout"
            content="Log out"
            onClick={() => act('PRG_logout')} />
        </NoticeBox>
      )}<Flex
        direction="column">
        {(!login && !password) && (
          <FlexItem>
          <Box>
            <Box mt={1}>
              LOGIN: <Button.Input
                    content={(stored_login ? stored_login : "Input Login")}
                    currentValue={stored_login}
                    onCommit={(e, value) => act('PRG_INPUTLOGIN', {
                      new_name: value,
                    })} />
            </Box>
            <Box mt={1}>
              PASSWORD: <Button.Input
                    content={(stored_password ? stored_password : "Input Login")}
                    currentValue={stored_password}
                    onCommit={(e, value) => act('PRG_INPUTPASSWORD', {
                      new_name: value,
                    })} />
            </Box>
            <Box
            align="center"
            mt={1}>
              <Button
                fluid
                key="login"
                content="Log in"
                onClick={() => act('PRG_login')} />
            </Box>
          </Box>
          </FlexItem>
        )}
        <Button
        key="logout"
        content="Log out"
        onClick={() => act('PRG_logout')} />


        </Flex>
      </NtosWindow.Content>
    </NtosWindow>

  );
};